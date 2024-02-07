(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1707346614)
  (begin
    (define type-id
      (lambda (_klass82501_)
        (if (let () (declare (not safe)) (type-descriptor? _klass82501_))
            (let () (declare (not safe)) (##type-id _klass82501_))
            (if (let () (declare (not safe)) (not _klass82501_))
                '#f
                (error '"not a type descriptor" _klass82501_)))))
    (define type=?
      (lambda (_x82498_ _y82499_)
        (let ((__tmp86720 (let () (declare (not safe)) (type-id _x82498_)))
              (__tmp86719 (let () (declare (not safe)) (type-id _y82499_))))
          (declare (not safe))
          (eq? __tmp86720 __tmp86719))))
    (define type-descriptor?
      (lambda (_klass82496_)
        (if (let () (declare (not safe)) (##type? _klass82496_))
            (let ((__tmp86721
                   (let ()
                     (declare (not safe))
                     (##structure-length _klass82496_))))
              (declare (not safe))
              (eq? __tmp86721 '12))
            '#f)))
    (define type-struct?
      (lambda (_klass82494_)
        (let ((__tmp86722
               (let ()
                 (declare (not safe))
                 (type-descriptor-properties _klass82494_))))
          (declare (not safe))
          (assgetq 'struct: __tmp86722))))
    (define type-final?
      (lambda (_klass82492_)
        (let ((__tmp86723
               (let ()
                 (declare (not safe))
                 (type-descriptor-properties _klass82492_))))
          (declare (not safe))
          (assgetq 'final: __tmp86723))))
    (define struct-type?
      (lambda (_klass82490_)
        (if (let () (declare (not safe)) (type-descriptor? _klass82490_))
            (let () (declare (not safe)) (type-struct? _klass82490_))
            '#f)))
    (define class-type?
      (lambda (_klass82488_)
        (let () (declare (not safe)) (type-descriptor? _klass82488_))))
    (define properties-form
      (lambda (_properties82454_)
        (map (lambda (_e8245582457_)
               (let* ((_g8245982466_ _e8245582457_)
                      (_E8246182470_
                       (lambda () (error '"No clause matching" _g8245982466_)))
                      (_K8246282476_
                       (lambda (_val82473_ _key82474_)
                         (if (let ()
                               (declare (not safe))
                               (eq? _key82474_ 'direct-supers:))
                             (let ((__tmp86724 (map type-id _val82473_)))
                               (declare (not safe))
                               (cons _key82474_ __tmp86724))
                             (let ()
                               (declare (not safe))
                               (cons _key82474_ _val82473_))))))
                 (if (let () (declare (not safe)) (##pair? _g8245982466_))
                     (let ((_hd8246382479_
                            (let ()
                              (declare (not safe))
                              (##car _g8245982466_)))
                           (_tl8246482481_
                            (let ()
                              (declare (not safe))
                              (##cdr _g8245982466_))))
                       (let* ((_key82484_ _hd8246382479_)
                              (_val82486_ _tl8246482481_))
                         (declare (not safe))
                         (_K8246282476_ _val82486_ _key82484_)))
                     (let () (declare (not safe)) (_E8246182470_)))))
             _properties82454_)))
    (define make-type-descriptor
      (lambda (_type-id82444_
               _type-name82445_
               _type-super82446_
               _rtd-mixin82447_
               _rtd-fields82448_
               _rtd-plist82449_
               _rtd-ctor82450_
               _rtd-slots82451_
               _rtd-methods82452_)
        (let ()
          (declare (not safe))
          (make-type-descriptor*
           _type-id82444_
           _type-name82445_
           _type-super82446_
           _rtd-mixin82447_
           _rtd-fields82448_
           _rtd-plist82449_
           _rtd-ctor82450_
           _rtd-slots82451_
           _rtd-methods82452_))))
    (define make-type-descriptor*
      (lambda (_type-id82357_
               _type-name82358_
               _type-super82359_
               _precedence-list82360_
               _all-slots82361_
               _properties82362_
               _constructor82363_
               _slot-table82364_
               _methods82365_)
        (letrec ((_make-props!82367_
                  (lambda (_key82413_)
                    (letrec* ((_ht82415_
                               (let ()
                                 (declare (not safe))
                                 (make-table 'test: eq?)))
                              (_put-slots!82416_
                               (lambda (_ht82437_ _slots82438_)
                                 (for-each
                                  (lambda (_g8243982441_)
                                    (let ()
                                      (declare (not safe))
                                      (table-set!
                                       _ht82437_
                                       _g8243982441_
                                       '#t)))
                                  _slots82438_)))
                              (_put-alist!82417_
                               (lambda (_ht82426_ _key82427_ _alist82428_)
                                 (let ((_$e82430_
                                        (let ()
                                          (declare (not safe))
                                          (assgetq _key82427_ _alist82428_))))
                                   (if _$e82430_
                                       ((lambda (_g8243282434_)
                                          (let ()
                                            (declare (not safe))
                                            (_put-slots!82416_
                                             _ht82426_
                                             _g8243282434_)))
                                        _$e82430_)
                                       '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_put-alist!82417_
                         _ht82415_
                         _key82413_
                         _properties82362_))
                      (for-each
                       (lambda (_mixin82419_)
                         (let ((_alist82421_
                                (let ()
                                  (declare (not safe))
                                  (type-descriptor-properties _mixin82419_))))
                           (if (or (let ()
                                     (declare (not safe))
                                     (assgetq 'transparent: _alist82421_))
                                   (let ((__tmp86726
                                          (let ()
                                            (declare (not safe))
                                            (assgetq _key82413_
                                                     _alist82421_))))
                                     (declare (not safe))
                                     (eq? '#t __tmp86726)))
                               (let ((__tmp86725
                                      (cdr (vector->list
                                            (let ()
                                              (declare (not safe))
                                              (type-descriptor-all-slots
                                               _mixin82419_))))))
                                 (declare (not safe))
                                 (_put-slots!82416_ _ht82415_ __tmp86725))
                               (let ()
                                 (declare (not safe))
                                 (_put-alist!82417_
                                  _ht82415_
                                  _key82413_
                                  _alist82421_)))))
                       _precedence-list82360_)
                      _ht82415_))))
          (let* ((_transparent?82369_
                  (let ()
                    (declare (not safe))
                    (assgetq 'transparent: _properties82362_)))
                 (_all-slots-printable?82374_
                  (let ((_$e82371_ _transparent?82369_))
                    (if _$e82371_
                        _$e82371_
                        (let ((__tmp86727
                               (let ()
                                 (declare (not safe))
                                 (assgetq 'print: _properties82362_))))
                          (declare (not safe))
                          (eq? '#t __tmp86727)))))
                 (_printable82376_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-printable?82374_))
                      (let ()
                        (declare (not safe))
                        (_make-props!82367_ 'print:))
                      '#f))
                 (_all-slots-equalable?82381_
                  (let ((_$e82378_ _transparent?82369_))
                    (if _$e82378_
                        _$e82378_
                        (let ((__tmp86728
                               (let ()
                                 (declare (not safe))
                                 (assgetq 'equal: _properties82362_))))
                          (declare (not safe))
                          (eq? '#t __tmp86728)))))
                 (_equalable82383_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-equalable?82381_))
                      (let ()
                        (declare (not safe))
                        (_make-props!82367_ 'equal:))
                      '#f))
                 (_first-new-field82385_
                  (if _type-super82359_
                      (let ((__tmp86729
                             (let ()
                               (declare (not safe))
                               (type-descriptor-all-slots _type-super82359_))))
                        (declare (not safe))
                        (##vector-length __tmp86729))
                      '1))
                 (_field-info-length82387_
                  (let ((__tmp86730
                         (let ((__tmp86731
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _all-slots82361_))))
                           (declare (not safe))
                           (##fx- __tmp86731 _first-new-field82385_))))
                    (declare (not safe))
                    (##fx* '3 __tmp86730)))
                 (_field-info82389_ (make-vector _field-info-length82387_ '#f))
                 (_opaque?82394_
                  (let ((_$e82391_
                         (let ()
                           (declare (not safe))
                           (not _all-slots-equalable?82381_))))
                    (if _$e82391_
                        _$e82391_
                        (if _type-super82359_
                            (let ((__tmp86732
                                   (let ((__tmp86733
                                          (let ()
                                            (declare (not safe))
                                            (##type-flags _type-super82359_))))
                                     (declare (not safe))
                                     (##fxand __tmp86733 '1))))
                              (declare (not safe))
                              (##fx= __tmp86732 '1))
                            '#f)))))
            (let _loop82397_ ((_i82399_ _first-new-field82385_) (_j82400_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _j82400_ _field-info-length82387_))
                  (let* ((_slot82402_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _all-slots82361_ _i82399_)))
                         (_flags82410_
                          (if _transparent?82369_
                              '0
                              (let ((__tmp86735
                                     (if (or _all-slots-printable?82374_
                                             (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _printable82376_
                                                _slot82402_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp86734
                                     (if (or _all-slots-equalable?82381_
                                             (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _equalable82383_
                                                _slot82402_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp86735 __tmp86734)))))
                    (vector-set! _field-info82389_ _j82400_ _slot82402_)
                    (vector-set!
                     _field-info82389_
                     (let () (declare (not safe)) (##fx+ _j82400_ '1))
                     _flags82410_)
                    (let ((__tmp86737
                           (let () (declare (not safe)) (##fx+ _i82399_ '1)))
                          (__tmp86736
                           (let () (declare (not safe)) (##fx+ _j82400_ '3))))
                      (declare (not safe))
                      (_loop82397_ __tmp86737 __tmp86736)))
                  '#!void))
            (let ((__tmp86738 (if _opaque?82394_ '25 '24)))
              (declare (not safe))
              (##structure
               ##type-type
               _type-id82357_
               _type-name82358_
               __tmp86738
               _type-super82359_
               _field-info82389_
               _precedence-list82360_
               _all-slots82361_
               _slot-table82364_
               _properties82362_
               _constructor82363_
               _methods82365_))))))
    (define type-descriptor-precedence-list
      (lambda (_klass82355_)
        (let () (declare (not safe)) (##vector-ref _klass82355_ '6))))
    (define type-descriptor-all-slots
      (lambda (_klass82353_)
        (let () (declare (not safe)) (##vector-ref _klass82353_ '7))))
    (define type-descriptor-slot-table
      (lambda (_klass82351_)
        (let () (declare (not safe)) (##vector-ref _klass82351_ '8))))
    (define type-descriptor-properties
      (lambda (_klass82349_)
        (let () (declare (not safe)) (##vector-ref _klass82349_ '9))))
    (define type-descriptor-constructor
      (lambda (_klass82347_)
        (let () (declare (not safe)) (##vector-ref _klass82347_ '10))))
    (define type-descriptor-methods
      (lambda (_klass82345_)
        (let () (declare (not safe)) (##vector-ref _klass82345_ '11))))
    (define type-descriptor-methods-set!
      (lambda (_klass82342_ _ht82343_)
        (let ()
          (declare (not safe))
          (##vector-set! _klass82342_ '11 _ht82343_))))
    (define type-descriptor-mixin type-descriptor-precedence-list)
    (define type-descriptor-plist type-descriptor-properties)
    (define type-descriptor-ctor type-descriptor-constructor)
    (define type-descriptor-fields
      (lambda (_klass82340_)
        (let ((__tmp86739
               (let ((__tmp86740
                      (let ()
                        (declare (not safe))
                        (type-descriptor-all-slots _klass82340_))))
                 (declare (not safe))
                 (##vector-length __tmp86740))))
          (declare (not safe))
          (##fx- __tmp86739 '1))))
    (define type-descriptor-sealed?
      (lambda (_klass82338_)
        (let ((__tmp86741
               (let () (declare (not safe)) (##type-flags _klass82338_))))
          (declare (not safe))
          (##fxbit-set? '20 __tmp86741))))
    (define type-descriptor-seal!
      (lambda (_klass82336_)
        (let ((__tmp86742
               (let ((__tmp86744
                      (let ()
                        (declare (not safe))
                        (##fxarithmetic-shift '1 '20)))
                     (__tmp86743
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass82336_))))
                 (declare (not safe))
                 (##fxior __tmp86744 __tmp86743))))
          (declare (not safe))
          (##vector-set! _klass82336_ '3 __tmp86742))))
    (define make-struct-type__%
      (lambda (_id82301_
               _super82302_
               _n-direct-slots82303_
               _name82304_
               _properties82305_
               _constructor82306_
               _direct-slots82307_)
        (let ((__tmp86745
               (let ((_$e82309_ _direct-slots82307_))
                 (if _$e82309_
                     _$e82309_
                     (map (lambda (_g8231182313_)
                            (let ()
                              (declare (not safe))
                              (make-symbol__1 '"_" _g8231182313_)))
                          (let ((__tmp86746
                                 (if _super82302_
                                     (let ((__tmp86747
                                            (let ()
                                              (declare (not safe))
                                              (type-descriptor-all-slots
                                               _super82302_))))
                                       (declare (not safe))
                                       (##vector-length __tmp86747))
                                     '1)))
                            (declare (not safe))
                            (iota _n-direct-slots82303_ __tmp86746)))))))
          (declare (not safe))
          (make-struct-type*
           _id82301_
           _name82304_
           _super82302_
           __tmp86745
           _properties82305_
           _constructor82306_))))
    (define make-struct-type__0
      (lambda (_id82319_
               _super82320_
               _n-direct-slots82321_
               _name82322_
               _properties82323_
               _constructor82324_)
        (let ((_direct-slots82326_ '#f))
          (declare (not safe))
          (make-struct-type__%
           _id82319_
           _super82320_
           _n-direct-slots82321_
           _name82322_
           _properties82323_
           _constructor82324_
           _direct-slots82326_))))
    (define make-struct-type
      (lambda _g86749_
        (let ((_g86748_ (let () (declare (not safe)) (##length _g86749_))))
          (cond ((let () (declare (not safe)) (##fx= _g86748_ 6))
                 (apply (lambda (_id82319_
                                 _super82320_
                                 _n-direct-slots82321_
                                 _name82322_
                                 _properties82323_
                                 _constructor82324_)
                          (let ()
                            (declare (not safe))
                            (make-struct-type__0
                             _id82319_
                             _super82320_
                             _n-direct-slots82321_
                             _name82322_
                             _properties82323_
                             _constructor82324_)))
                        _g86749_))
                ((let () (declare (not safe)) (##fx= _g86748_ 7))
                 (apply (lambda (_id82328_
                                 _super82329_
                                 _n-direct-slots82330_
                                 _name82331_
                                 _properties82332_
                                 _constructor82333_
                                 _direct-slots82334_)
                          (let ()
                            (declare (not safe))
                            (make-struct-type__%
                             _id82328_
                             _super82329_
                             _n-direct-slots82330_
                             _name82331_
                             _properties82332_
                             _constructor82333_
                             _direct-slots82334_)))
                        _g86749_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-struct-type
                  _g86749_))))))
    (define make-struct-type*
      (lambda (_id82281_
               _name82282_
               _super82283_
               _direct-slots82284_
               _properties82285_
               _constructor82286_)
        (if (and _super82283_
                 (let ((__tmp86750
                        (let ()
                          (declare (not safe))
                          (struct-type? _super82283_))))
                   (declare (not safe))
                   (not __tmp86750)))
            (error '"illegal super type; not a struct-type" _super82283_)
            '#!void)
        (let* ((_type82288_
                (let ((__tmp86753
                       (if _super82283_
                           (let ()
                             (declare (not safe))
                             (cons _super82283_ '()))
                           '()))
                      (__tmp86751
                       (if (let ()
                             (declare (not safe))
                             (assgetq 'struct: _properties82285_))
                           _properties82285_
                           (let ((__tmp86752
                                  (let ()
                                    (declare (not safe))
                                    (cons 'struct: '#t))))
                             (declare (not safe))
                             (cons __tmp86752 _properties82285_)))))
                  (declare (not safe))
                  (make-class-type*
                   _id82281_
                   _name82282_
                   __tmp86753
                   _direct-slots82284_
                   __tmp86751
                   _constructor82286_)))
               (_all-slots82290_
                (let ()
                  (declare (not safe))
                  (type-descriptor-all-slots _type82288_)))
               (_len82292_ (length _direct-slots82284_))
               (_start82294_
                (let ((__tmp86754
                       (let ()
                         (declare (not safe))
                         (##vector-length _all-slots82290_))))
                  (declare (not safe))
                  (##fx- __tmp86754 _len82292_))))
          (if (let ((__tmp86756
                     (lambda (_slot82297_ _i82298_)
                       (let ((__tmp86757
                              (let ()
                                (declare (not safe))
                                (##vector-ref _all-slots82290_ _i82298_))))
                         (declare (not safe))
                         (eq? _slot82297_ __tmp86757))))
                    (__tmp86755
                     (let ()
                       (declare (not safe))
                       (iota _len82292_ _start82294_))))
                (declare (not safe))
                (andmap2 __tmp86756 _direct-slots82284_ __tmp86755))
              '#!void
              (error '"non-unique slots in struct"
                     _name82282_
                     _direct-slots82284_))
          _type82288_)))
    (define make-struct-predicate
      (lambda (_klass82273_)
        (let ((_tid82275_
               (let () (declare (not safe)) (##type-id _klass82273_))))
          (if (let () (declare (not safe)) (type-final? _klass82273_))
              (lambda (_obj82277_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _obj82277_ _tid82275_)))
              (lambda (_obj82279_)
                (let ()
                  (declare (not safe))
                  (##structure-instance-of? _obj82279_ _tid82275_)))))))
    (define make-struct-slot-accessor
      (lambda (_klass82261_ _slot82262_)
        (let ((_$e82264_
               (let ()
                 (declare (not safe))
                 (class-slot-offset* _klass82261_ _slot82262_))))
          (if _$e82264_
              ((lambda (_off82267_)
                 (if (let () (declare (not safe)) (type-final? _klass82261_))
                     (lambda (_obj82269_)
                       (let ()
                         (declare (not safe))
                         (##direct-structure-ref
                          _obj82269_
                          _off82267_
                          _klass82261_
                          '#f)))
                     (lambda (_obj82271_)
                       (let ()
                         (declare (not safe))
                         (##structure-ref
                          _obj82271_
                          _off82267_
                          _klass82261_
                          '#f)))))
               _$e82264_)
              (error '"unknown slot"
                     'class:
                     _klass82261_
                     'slot:
                     _slot82262_)))))
    (define make-struct-slot-mutator
      (lambda (_klass82247_ _slot82248_)
        (let ((_$e82250_
               (let ()
                 (declare (not safe))
                 (class-slot-offset* _klass82247_ _slot82248_))))
          (if _$e82250_
              ((lambda (_off82253_)
                 (if (let () (declare (not safe)) (type-final? _klass82247_))
                     (lambda (_obj82255_ _val82256_)
                       (let ()
                         (declare (not safe))
                         (##direct-structure-set!
                          _obj82255_
                          _val82256_
                          _off82253_
                          _klass82247_
                          '#f)))
                     (lambda (_obj82258_ _val82259_)
                       (let ()
                         (declare (not safe))
                         (##structure-set!
                          _obj82258_
                          _val82259_
                          _off82253_
                          _klass82247_
                          '#f)))))
               _$e82250_)
              (error '"unknown slot"
                     'class:
                     _klass82247_
                     'slot:
                     _slot82248_)))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_klass82237_ _slot82238_)
        (let ((_$e82240_
               (let ()
                 (declare (not safe))
                 (class-slot-offset* _klass82237_ _slot82238_))))
          (if _$e82240_
              ((lambda (_off82243_)
                 (lambda (_obj82245_)
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref
                      _obj82245_
                      _off82243_
                      _klass82237_
                      '#f))))
               _$e82240_)
              (error '"unknown slot"
                     'class:
                     _klass82237_
                     'slot:
                     _slot82238_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_klass82226_ _slot82227_)
        (let ((_$e82229_
               (let ()
                 (declare (not safe))
                 (class-slot-offset* _klass82226_ _slot82227_))))
          (if _$e82229_
              ((lambda (_off82232_)
                 (lambda (_obj82234_ _val82235_)
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      _obj82234_
                      _val82235_
                      _off82232_
                      _klass82226_
                      '#f))))
               _$e82229_)
              (error '"unknown slot"
                     'class:
                     _klass82226_
                     'slot:
                     _slot82227_)))))
    (define make-struct-field-accessor
      (lambda (_klass82223_ _field82224_)
        (let ((__tmp86758
               (let ()
                 (declare (not safe))
                 (struct-field-offset* _klass82223_ _field82224_))))
          (declare (not safe))
          (make-struct-field-accessor* _klass82223_ __tmp86758))))
    (define make-struct-field-accessor*
      (lambda (_klass82218_ _field82219_)
        (lambda (_obj82221_)
          (let ()
            (declare (not safe))
            (##structure-ref _obj82221_ _field82219_ _klass82218_ '#f)))))
    (define make-struct-field-mutator
      (lambda (_klass82215_ _field82216_)
        (let ((__tmp86759
               (let ()
                 (declare (not safe))
                 (struct-field-offset* _klass82215_ _field82216_))))
          (declare (not safe))
          (make-struct-field-mutator* _klass82215_ __tmp86759))))
    (define make-struct-field-mutator*
      (lambda (_klass82209_ _field82210_)
        (lambda (_obj82212_ _val82213_)
          (let ()
            (declare (not safe))
            (##structure-set!
             _obj82212_
             _val82213_
             _field82210_
             _klass82209_
             '#f)))))
    (define make-struct-field-unchecked-accessor
      (lambda (_klass82206_ _field82207_)
        (let ((__tmp86760
               (let ()
                 (declare (not safe))
                 (struct-field-offset* _klass82206_ _field82207_))))
          (declare (not safe))
          (make-struct-field-unchecked-accessor* _klass82206_ __tmp86760))))
    (define make-struct-field-unchecked-accessor*
      (lambda (_klass82201_ _field82202_)
        (lambda (_obj82204_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _obj82204_
             _field82202_
             _klass82201_
             '#f)))))
    (define make-struct-field-unchecked-mutator
      (lambda (_klass82198_ _field82199_)
        (let ((__tmp86761
               (let ()
                 (declare (not safe))
                 (struct-field-offset* _klass82198_ _field82199_))))
          (declare (not safe))
          (make-struct-field-unchecked-mutator* _klass82198_ __tmp86761))))
    (define make-struct-field-unchecked-mutator*
      (lambda (_klass82192_ _field82193_)
        (lambda (_obj82195_ _val82196_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _obj82195_
             _val82196_
             _field82193_
             _klass82192_
             '#f)))))
    (define struct-field-offset*
      (lambda (_klass82187_ _field82188_)
        (let ((__tmp86762
               (let ((_super82190_
                      (let ()
                        (declare (not safe))
                        (##type-super _klass82187_))))
                 (if _super82190_
                     (let ((__tmp86763
                            (let ()
                              (declare (not safe))
                              (type-descriptor-all-slots _super82190_))))
                       (declare (not safe))
                       (##vector-length __tmp86763))
                     '1))))
          (declare (not safe))
          (##fx+ _field82188_ __tmp86762))))
    (define substruct?
      (lambda (_maybe-sub-struct82178_ _maybe-super-struct82179_)
        (let ((_maybe-super-struct-id82181_
               (let ()
                 (declare (not safe))
                 (##type-id _maybe-super-struct82179_))))
          (let _lp82183_ ((_super-struct82185_ _maybe-sub-struct82178_))
            (if (let () (declare (not safe)) (not _super-struct82185_))
                '#f
                (if (let ((__tmp86765
                           (let ()
                             (declare (not safe))
                             (type-id _super-struct82185_))))
                      (declare (not safe))
                      (eq? _maybe-super-struct-id82181_ __tmp86765))
                    '#t
                    (let ((__tmp86764
                           (let ()
                             (declare (not safe))
                             (##type-super _super-struct82185_))))
                      (declare (not safe))
                      (_lp82183_ __tmp86764))))))))
    (define struct-subtype?
      (lambda (_maybe-super-struct82175_ _maybe-sub-struct82176_)
        (let ()
          (declare (not safe))
          (substruct? _maybe-sub-struct82176_ _maybe-super-struct82175_))))
    (define base-struct/1
      (lambda (_klass82173_)
        (if (let () (declare (not safe)) (struct-type? _klass82173_))
            _klass82173_
            (if (let () (declare (not safe)) (class-type? _klass82173_))
                (let () (declare (not safe)) (##type-super _klass82173_))
                (if (let () (declare (not safe)) (not _klass82173_))
                    '#f
                    (error '"not a class or false" _klass82173_))))))
    (define base-struct/2
      (lambda (_klass182161_ _klass282162_)
        (let ((_s182164_
               (let () (declare (not safe)) (base-struct/1 _klass182161_)))
              (_s282165_
               (let () (declare (not safe)) (base-struct/1 _klass282162_))))
          (if (or (let () (declare (not safe)) (not _s182164_))
                  (and _s282165_
                       (let ()
                         (declare (not safe))
                         (substruct? _s182164_ _s282165_))))
              _s282165_
              (if (or (let () (declare (not safe)) (not _s282165_))
                      (and _s182164_
                           (let ()
                             (declare (not safe))
                             (substruct? _s282165_ _s182164_))))
                  _s182164_
                  (error '"bad mixin: incompatible struct bases"
                         _klass182161_
                         _klass282162_
                         _s182164_
                         _s282165_))))))
    (define base-struct/list
      (lambda (_all-supers82045_)
        (let* ((_all-supers8204682071_ _all-supers82045_)
               (_E8205182075_
                (lambda ()
                  (error '"No clause matching" _all-supers8204682071_))))
          (let ((_K8206982158_ (lambda () '#f))
                (_K8206682144_
                 (lambda (_x82142_)
                   (let () (declare (not safe)) (base-struct/1 _x82142_))))
                (_K8206182121_
                 (lambda (_y82118_ _x82119_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _x82119_ _y82118_))))
                (_K8205282082_
                 (lambda (_y82079_ _x82080_)
                   (let ()
                     (declare (not safe))
                     (foldr1 base-struct/2 _x82080_ _y82079_)))))
            (let* ((___match8671786718_
                    (lambda (_hd8205382085_ _tl8205482087_)
                      (let ((_x82090_ _hd8205382085_))
                        (letrec ((_splice-rest8205682092_
                                  (lambda (_rest8206082099_ _y82101_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _rest8206082099_))
                                        (let ()
                                          (declare (not safe))
                                          (_K8205282082_ _y82101_ _x82090_))
                                        (let ()
                                          (declare (not safe))
                                          (_E8205182075_)))))
                                 (_splice-try8205882094_
                                  (lambda (_hd8205982103_
                                           _rest8206082105_
                                           _y8205582106_)
                                    (let ((_y82109_ _hd8205982103_))
                                      (let ((__tmp86767
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest8206082105_)))
                                            (__tmp86766
                                             (let ()
                                               (declare (not safe))
                                               (cons _y82109_ _y8205582106_))))
                                        (declare (not safe))
                                        (_splice-loop8205782096_
                                         __tmp86767
                                         __tmp86766)))))
                                 (_splice-loop8205782096_
                                  (lambda (_rest8206082111_ _y8205582112_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest8206082111_))
                                        (let ((__tmp86769
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest8206082111_))))
                                          (declare (not safe))
                                          (_splice-try8205882094_
                                           __tmp86769
                                           _rest8206082111_
                                           _y8205582112_))
                                        (let ((__tmp86768
                                               (reverse _y8205582112_)))
                                          (declare (not safe))
                                          (_splice-rest8205682092_
                                           _rest8206082111_
                                           __tmp86768))))))
                          (let ()
                            (declare (not safe))
                            (_splice-loop8205782096_ _tl8205482087_ '()))))))
                   (_try-match8204882154_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all-supers8204682071_))
                          (let ((_tl8206882149_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all-supers8204682071_)))
                                (_hd8206782147_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all-supers8204682071_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl8206882149_))
                                (let ((_x82152_ _hd8206782147_))
                                  (declare (not safe))
                                  (base-struct/1 _x82152_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl8206882149_))
                                    (let ((_tl8206582133_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl8206882149_)))
                                          (_hd8206482131_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl8206882149_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl8206582133_))
                                          (let ((_x82129_ _hd8206782147_)
                                                (_y82136_ _hd8206482131_))
                                            (let ()
                                              (declare (not safe))
                                              (_K8206182121_
                                               _y82136_
                                               _x82129_)))
                                          (___match8671786718_
                                           _hd8206782147_
                                           _tl8206882149_)))
                                    (___match8671786718_
                                     _hd8206782147_
                                     _tl8206882149_))))
                          (let () (declare (not safe)) (_E8205182075_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _all-supers8204682071_))
                  (let () (declare (not safe)) (_K8206982158_))
                  (let () (declare (not safe)) (_try-match8204882154_))))))))
    (define base-struct
      (lambda _all-supers82043_
        (let () (declare (not safe)) (base-struct/list _all-supers82043_))))
    (define find-super-ctor
      (lambda (_super82041_)
        (let () (declare (not safe)) (find-super-constructor _super82041_))))
    (define find-super-constructor
      (lambda (_super81993_)
        (let _lp81995_ ((_rest81997_ _super81993_) (_constructor81998_ '#f))
          (let* ((_rest8199982007_ _rest81997_)
                 (_else8200182015_ (lambda () _constructor81998_))
                 (_K8200382029_
                  (lambda (_rest82018_ _hd82019_)
                    (let ((_$e82021_
                           (let ()
                             (declare (not safe))
                             (type-descriptor-constructor _hd82019_))))
                      (if _$e82021_
                          ((lambda (_xconstructor82024_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _constructor81998_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _constructor81998_
                                            _xconstructor82024_)))
                                 (let ()
                                   (declare (not safe))
                                   (_lp81995_ _rest82018_ _xconstructor82024_))
                                 (error '"conflicting implicit constructors"
                                        _constructor81998_
                                        _xconstructor82024_)))
                           _$e82021_)
                          (let ()
                            (declare (not safe))
                            (_lp81995_ _rest82018_ _constructor81998_)))))))
            (if (let () (declare (not safe)) (##pair? _rest8199982007_))
                (let ((_hd8200482032_
                       (let () (declare (not safe)) (##car _rest8199982007_)))
                      (_tl8200582034_
                       (let () (declare (not safe)) (##cdr _rest8199982007_))))
                  (let* ((_hd82037_ _hd8200482032_)
                         (_rest82039_ _tl8200582034_))
                    (declare (not safe))
                    (_K8200382029_ _rest82039_ _hd82037_)))
                (let () (declare (not safe)) (_else8200182015_)))))))
    (define compute-class-slots
      (lambda (_super-struct81964_
               _class-precedence-list81965_
               _direct-slots81966_)
        (let* ((_previous-slots81968_
                (if _super-struct81964_
                    (let ()
                      (declare (not safe))
                      (type-descriptor-all-slots _super-struct81964_))
                    '#(#f)))
               (_next-slot81970_
                (let ()
                  (declare (not safe))
                  (##vector-length _previous-slots81968_)))
               (_slot-table81972_
                (if _super-struct81964_
                    (let ((__tmp86770
                           (let ()
                             (declare (not safe))
                             (type-descriptor-slot-table
                              _super-struct81964_))))
                      (declare (not safe))
                      (hash-copy __tmp86770))
                    (let () (declare (not safe)) (make-table 'test: eq?))))
               (_r-slots81974_ '())
               (_process-slot81978_
                (lambda (_slot81976_)
                  (if (let () (declare (not safe)) (symbol? _slot81976_))
                      '#!void
                      (error '"invalid slot name" _slot81976_))
                  (if (let ()
                        (declare (not safe))
                        (hash-key? _slot-table81972_ _slot81976_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (table-set!
                           _slot-table81972_
                           _slot81976_
                           _next-slot81970_))
                        (let ((__tmp86771 (symbol->keyword _slot81976_)))
                          (declare (not safe))
                          (table-set!
                           _slot-table81972_
                           __tmp86771
                           _next-slot81970_))
                        (set! _r-slots81974_
                              (let ()
                                (declare (not safe))
                                (cons _slot81976_ _r-slots81974_)))
                        (set! _next-slot81970_
                              (let ()
                                (declare (not safe))
                                (##fx+ _next-slot81970_ '1)))))))
               (_process-slots81984_
                (lambda (_g8197981981_)
                  (for-each _process-slot81978_ _g8197981981_))))
          (for-each
           (lambda (_mixin81987_)
             (if (let () (declare (not safe)) (type-struct? _mixin81987_))
                 '#!void
                 (let ((__tmp86772
                        (let ((__tmp86773
                               (let ()
                                 (declare (not safe))
                                 (type-descriptor-properties _mixin81987_))))
                          (declare (not safe))
                          (assgetq 'direct-slots: __tmp86773 '()))))
                   (declare (not safe))
                   (_process-slots81984_ __tmp86772))))
           (reverse _class-precedence-list81965_))
          (let ()
            (declare (not safe))
            (_process-slots81984_ _direct-slots81966_))
          (let ((_all-slots81989_ (make-vector _next-slot81970_ '#f)))
            (vector-copy! _all-slots81989_ '0 _previous-slots81968_)
            (for-each
             (lambda (_slot81991_)
               (set! _next-slot81970_
                     (let () (declare (not safe)) (##fx- _next-slot81970_ '1)))
               (vector-set! _all-slots81989_ _next-slot81970_ _slot81991_))
             _r-slots81974_)
            (values _all-slots81989_ _slot-table81972_)))))
    (define make-class-type
      (lambda (_id81957_
               _direct-supers81958_
               _direct-slots81959_
               _name81960_
               _properties81961_
               _constructor81962_)
        (let ()
          (declare (not safe))
          (make-class-type*
           _id81957_
           _name81960_
           _direct-supers81958_
           _direct-slots81959_
           _properties81961_
           _constructor81962_))))
    (define make-class-type*
      (lambda (_id81919_
               _name81920_
               _direct-supers81921_
               _direct-slots81922_
               _properties81923_
               _constructor81924_)
        (let ((_$e81928_
               (let ((__tmp86774
                      (lambda (_klass81926_)
                        (let ((__tmp86775
                               (let ()
                                 (declare (not safe))
                                 (type-descriptor? _klass81926_))))
                          (declare (not safe))
                          (not __tmp86775)))))
                 (declare (not safe))
                 (find __tmp86774 _direct-supers81921_))))
          (if _$e81928_
              ((lambda (_g8193081932_)
                 (error '"Illegal super class; not a type descriptor"
                        _g8193081932_))
               _$e81928_)
              (let ((_$e81935_
                     (let ()
                       (declare (not safe))
                       (find type-final? _direct-supers81921_))))
                (if _$e81935_
                    ((lambda (_g8193781939_)
                       (error '"Cannot extend final class" _g8193781939_))
                     _$e81935_)
                    '#!void))))
        (let* ((_struct-super81942_
                (let ()
                  (declare (not safe))
                  (base-struct/list _direct-supers81921_)))
               (_precedence-list81944_
                (let ()
                  (declare (not safe))
                  (class-linearize-mixins _direct-supers81921_)))
               (_g86776_
                (let ()
                  (declare (not safe))
                  (compute-class-slots
                   _struct-super81942_
                   _precedence-list81944_
                   _direct-slots81922_))))
          (begin
            (let ((_g86777_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g86776_) (##vector-length _g86776_) 1))))
              (if (not (let () (declare (not safe)) (##fx= _g86777_ 2)))
                  (error "Context expects 2 values" _g86777_)))
            (let ((_all-slots81946_
                   (let () (declare (not safe)) (##vector-ref _g86776_ 0)))
                  (_slot-table81947_
                   (let () (declare (not safe)) (##vector-ref _g86776_ 1))))
              (let* ((_properties81949_
                      (let ((__tmp86780
                             (let ()
                               (declare (not safe))
                               (cons 'direct-slots: _direct-slots81922_)))
                            (__tmp86778
                             (let ((__tmp86779
                                    (let ()
                                      (declare (not safe))
                                      (cons 'direct-supers:
                                            _direct-supers81921_))))
                               (declare (not safe))
                               (cons __tmp86779 _properties81923_))))
                        (declare (not safe))
                        (cons __tmp86780 __tmp86778)))
                     (_constructor*81954_
                      (let ((_$e81951_ _constructor81924_))
                        (if _$e81951_
                            _$e81951_
                            (let ()
                              (declare (not safe))
                              (find-super-constructor
                               _direct-supers81921_))))))
                (let ()
                  (declare (not safe))
                  (make-type-descriptor*
                   _id81919_
                   _name81920_
                   _struct-super81942_
                   _precedence-list81944_
                   _all-slots81946_
                   _properties81949_
                   _constructor*81954_
                   _slot-table81947_
                   '#f))))))))
    (define class-precedence-list
      (lambda (_klass81917_)
        (let ((__tmp86781
               (let ()
                 (declare (not safe))
                 (type-descriptor-precedence-list _klass81917_))))
          (declare (not safe))
          (cons _klass81917_ __tmp86781))))
    (define struct-precedence-list
      (lambda (_strukt81912_)
        (let ((__tmp86782
               (let ((_$e81914_
                      (let ()
                        (declare (not safe))
                        (##type-super _strukt81912_))))
                 (if _$e81914_
                     (let ()
                       (declare (not safe))
                       (struct-precedence-list _$e81914_))
                     '()))))
          (declare (not safe))
          (cons _strukt81912_ __tmp86782))))
    (define class-linearize-mixins
      (lambda (_klass-lst81910_)
        (let ()
          (declare (not safe))
          (c3-linearize__%
           '()
           _klass-lst81910_
           class-precedence-list
           eq?
           ##type-name))))
    (define make-class-predicate
      (lambda (_klass81900_)
        (if (let () (declare (not safe)) (type-final? _klass81900_))
            (lambda (_g8190181903_)
              (let ((__tmp86783
                     (let () (declare (not safe)) (##type-id _klass81900_))))
                (declare (not safe))
                (##structure-direct-instance-of? _g8190181903_ __tmp86783)))
            (lambda (_g8190581907_)
              (let ()
                (declare (not safe))
                (class-instance? _klass81900_ _g8190581907_))))))
    (define if-class-slot-field
      (lambda (_klass81887_
               _slot81888_
               _if-struct81889_
               _if-struct-field81890_
               _if-class-slot81891_)
        (let ((_field81893_
               (let ((__tmp86784
                      (let ()
                        (declare (not safe))
                        (type-descriptor-slot-table _klass81887_))))
                 (declare (not safe))
                 (table-ref __tmp86784 _slot81888_ '#f))))
          (if (let () (declare (not safe)) (not _field81893_))
              (error '"unknown slot" 'class: _klass81887_ 'slot: _slot81888_)
              (if (or (let () (declare (not safe)) (type-final? _klass81887_))
                      (let ()
                        (declare (not safe))
                        (type-struct? _klass81887_)))
                  (_if-struct81889_ _klass81887_ _slot81888_ _field81893_)
                  (if (let ((_strukt81898_
                             (let ()
                               (declare (not safe))
                               (base-struct/1 _klass81887_))))
                        (and _strukt81898_
                             (let ((__tmp86785
                                    (let ((__tmp86786
                                           (let ()
                                             (declare (not safe))
                                             (type-descriptor-all-slots
                                              _strukt81898_))))
                                      (declare (not safe))
                                      (##vector-length __tmp86786))))
                               (declare (not safe))
                               (##fx< _field81893_ __tmp86785))))
                      (_if-struct-field81890_
                       _klass81887_
                       _slot81888_
                       _field81893_)
                      (_if-class-slot81891_
                       _klass81887_
                       _slot81888_
                       _field81893_)))))))
    (define make-class-slot-accessor
      (lambda (_klass81884_ _slot81885_)
        (let ((__tmp86787
               (let ()
                 (declare (not safe))
                 (ignore-slot make-struct-field-accessor*))))
          (declare (not safe))
          (if-class-slot-field
           _klass81884_
           _slot81885_
           __tmp86787
           make-struct-subclass-field-accessor
           make-class-cached-slot-accessor))))
    (define make-struct-subclass-field-accessor
      (lambda (_klass81878_ _slot81879_ _field81880_)
        (lambda (_obj81882_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass81878_ _obj81882_))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj81882_ _field81880_))
              (error '"not an instance"
                     'object:
                     _obj81882_
                     'class:
                     _klass81878_
                     'slot:
                     _slot81879_)))))
    (define make-class-cached-slot-accessor
      (lambda (_klass81872_ _slot81873_ _field81874_)
        (lambda (_obj81876_)
          (if (let ((__tmp86788
                     (let () (declare (not safe)) (##type-id _klass81872_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj81876_ __tmp86788))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj81876_ _field81874_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass81872_ _obj81876_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-ref _obj81876_ _slot81873_))
                  (error '"not an instance"
                         'object:
                         _obj81876_
                         'class:
                         _klass81872_
                         'slot:
                         _slot81873_))))))
    (define make-class-slot-mutator
      (lambda (_klass81869_ _slot81870_)
        (let ((__tmp86789
               (let ()
                 (declare (not safe))
                 (ignore-slot make-struct-field-mutator*))))
          (declare (not safe))
          (if-class-slot-field
           _klass81869_
           _slot81870_
           __tmp86789
           make-struct-subclass-field-mutator
           make-class-cached-slot-mutator))))
    (define make-struct-subclass-field-mutator
      (lambda (_klass81862_ _slot81863_ _field81864_)
        (lambda (_obj81866_ _val81867_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass81862_ _obj81866_))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj81866_ _field81864_ _val81867_))
              (error '"not an instance"
                     'object:
                     _obj81866_
                     'class:
                     _klass81862_
                     'slot:
                     _slot81863_)))))
    (define make-class-cached-slot-mutator
      (lambda (_klass81855_ _slot81856_ _field81857_)
        (lambda (_obj81859_ _val81860_)
          (if (let ((__tmp86790
                     (let () (declare (not safe)) (##type-id _klass81855_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj81859_ __tmp86790))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj81859_ _field81857_ _val81860_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass81855_ _obj81859_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-set! _obj81859_ _slot81856_ _val81860_))
                  (error '"not an instance"
                         'object:
                         _obj81859_
                         'class:
                         _klass81855_
                         'slot:
                         _slot81856_))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass81852_ _slot81853_)
        (let ((__tmp86792
               (let ()
                 (declare (not safe))
                 (ignore-slot make-struct-field-unchecked-accessor*)))
              (__tmp86791
               (let ()
                 (declare (not safe))
                 (ignore-slot make-struct-field-unchecked-accessor*))))
          (declare (not safe))
          (if-class-slot-field
           _klass81852_
           _slot81853_
           __tmp86792
           __tmp86791
           make-class-cached-slot-unchecked-accessor))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_klass81846_ _slot81847_ _field81848_)
        (lambda (_obj81850_)
          (if (let ((__tmp86793
                     (let () (declare (not safe)) (##type-id _klass81846_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj81850_ __tmp86793))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj81850_ _field81848_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj81850_ _slot81847_))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass81843_ _slot81844_)
        (let ((__tmp86795
               (let ()
                 (declare (not safe))
                 (ignore-slot make-struct-field-unchecked-mutator*)))
              (__tmp86794
               (let ()
                 (declare (not safe))
                 (ignore-slot make-struct-field-unchecked-mutator*))))
          (declare (not safe))
          (if-class-slot-field
           _klass81843_
           _slot81844_
           __tmp86795
           __tmp86794
           make-class-cached-slot-unchecked-mutator))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_klass81836_ _slot81837_ _field81838_)
        (lambda (_obj81840_ _val81841_)
          (if (let ((__tmp86796
                     (let () (declare (not safe)) (##type-id _klass81836_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj81840_ __tmp86796))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj81840_ _field81838_ _val81841_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set! _obj81840_ _slot81837_ _val81841_))))))
    (define ignore-slot
      (lambda (_proc81830_)
        (lambda (_klass81832_ _slot81833_ _field81834_)
          (_proc81830_ _klass81832_ _field81834_))))
    (define class-slot-offset
      (lambda (_klass81825_ _slot81826_)
        (let ((_off81828_
               (let ()
                 (declare (not safe))
                 (class-slot-offset* _klass81825_ _slot81826_))))
          (if _off81828_
              (let () (declare (not safe)) (##fx- _off81828_ '1))
              '#f))))
    (define class-slot-offset*
      (lambda (_klass81822_ _slot81823_)
        (let ((__tmp86797
               (let ()
                 (declare (not safe))
                 (type-descriptor-slot-table _klass81822_))))
          (declare (not safe))
          (table-ref __tmp86797 _slot81823_ '#f))))
    (define class-slot-ref
      (lambda (_klass81816_ _obj81817_ _slot81818_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass81816_ _obj81817_))
            (let ((_off81820_
                   (let ((__tmp86798
                          (let ()
                            (declare (not safe))
                            (object-type _obj81817_))))
                     (declare (not safe))
                     (class-slot-offset* __tmp86798 _slot81818_))))
              (declare (not safe))
              (##unchecked-structure-ref
               _obj81817_
               _off81820_
               _klass81816_
               '#f))
            (error '"not an instance"
                   'class:
                   _klass81816_
                   'object:
                   _obj81817_))))
    (define class-slot-set!
      (lambda (_klass81809_ _obj81810_ _slot81811_ _val81812_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass81809_ _obj81810_))
            (let ((_off81814_
                   (let ((__tmp86799
                          (let ()
                            (declare (not safe))
                            (object-type _obj81810_))))
                     (declare (not safe))
                     (class-slot-offset* __tmp86799 _slot81811_))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj81810_
               _val81812_
               _off81814_
               _klass81809_
               '#f))
            (error '"not an instance"
                   'class:
                   _klass81809_
                   'object:
                   _obj81810_))))
    (define unchecked-field-ref
      (lambda (_obj81806_ _off81807_)
        (let ((__tmp86800
               (let () (declare (not safe)) (##structure-type _obj81806_))))
          (declare (not safe))
          (##unchecked-structure-ref _obj81806_ _off81807_ __tmp86800 '#f))))
    (define unchecked-field-set!
      (lambda (_obj81802_ _off81803_ _val81804_)
        (let ((__tmp86801
               (let () (declare (not safe)) (##structure-type _obj81802_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _obj81802_
           _val81804_
           _off81803_
           __tmp86801
           '#f))))
    (define unchecked-slot-ref
      (lambda (_obj81799_ _slot81800_)
        (let ((__tmp86802
               (let ((__tmp86803
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj81799_))))
                 (declare (not safe))
                 (class-slot-offset* __tmp86803 _slot81800_))))
          (declare (not safe))
          (unchecked-field-ref _obj81799_ __tmp86802))))
    (define unchecked-slot-set!
      (lambda (_obj81795_ _slot81796_ _val81797_)
        (let ((__tmp86804
               (let ((__tmp86805
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj81795_))))
                 (declare (not safe))
                 (class-slot-offset* __tmp86805 _slot81796_))))
          (declare (not safe))
          (unchecked-field-set! _obj81795_ __tmp86804 _val81797_))))
    (define slot-ref__%
      (lambda (_obj81771_ _slot81772_ _E81773_)
        (if (let () (declare (not safe)) (object? _obj81771_))
            (let* ((_klass81775_
                    (let () (declare (not safe)) (object-type _obj81771_)))
                   (_$e81778_
                    (if (let ()
                          (declare (not safe))
                          (type-descriptor? _klass81775_))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset* _klass81775_ _slot81772_))
                        '#f)))
              (if _$e81778_
                  ((lambda (_off81781_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-ref _obj81771_ _off81781_)))
                   _$e81778_)
                  (_E81773_ _obj81771_ _slot81772_)))
            (_E81773_ _obj81771_ _slot81772_))))
    (define slot-ref__0
      (lambda (_obj81786_ _slot81787_)
        (let ((_E81789_ __slot-error))
          (declare (not safe))
          (slot-ref__% _obj81786_ _slot81787_ _E81789_))))
    (define slot-ref
      (lambda _g86807_
        (let ((_g86806_ (let () (declare (not safe)) (##length _g86807_))))
          (cond ((let () (declare (not safe)) (##fx= _g86806_ 2))
                 (apply (lambda (_obj81786_ _slot81787_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj81786_ _slot81787_)))
                        _g86807_))
                ((let () (declare (not safe)) (##fx= _g86806_ 3))
                 (apply (lambda (_obj81791_ _slot81792_ _E81793_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj81791_ _slot81792_ _E81793_)))
                        _g86807_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g86807_))))))
    (define slot-set!__%
      (lambda (_obj81743_ _slot81744_ _val81745_ _E81746_)
        (if (let () (declare (not safe)) (object? _obj81743_))
            (let* ((_klass81748_
                    (let () (declare (not safe)) (object-type _obj81743_)))
                   (_$e81751_
                    (if (let ()
                          (declare (not safe))
                          (type-descriptor? _klass81748_))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset* _klass81748_ _slot81744_))
                        '#f)))
              (if _$e81751_
                  ((lambda (_off81754_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-set!
                        _obj81743_
                        _off81754_
                        _val81745_)))
                   _$e81751_)
                  (_E81746_ _obj81743_ _slot81744_)))
            (_E81746_ _obj81743_ _slot81744_))))
    (define slot-set!__0
      (lambda (_obj81759_ _slot81760_ _val81761_)
        (let ((_E81763_ __slot-error))
          (declare (not safe))
          (slot-set!__% _obj81759_ _slot81760_ _val81761_ _E81763_))))
    (define slot-set!
      (lambda _g86809_
        (let ((_g86808_ (let () (declare (not safe)) (##length _g86809_))))
          (cond ((let () (declare (not safe)) (##fx= _g86808_ 3))
                 (apply (lambda (_obj81759_ _slot81760_ _val81761_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj81759_ _slot81760_ _val81761_)))
                        _g86809_))
                ((let () (declare (not safe)) (##fx= _g86808_ 4))
                 (apply (lambda (_obj81765_ _slot81766_ _val81767_ _E81768_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj81765_
                             _slot81766_
                             _val81767_
                             _E81768_)))
                        _g86809_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g86809_))))))
    (define __slot-error
      (lambda (_obj81739_ _slot81740_)
        (error '"Cannot find slot" 'object: _obj81739_ 'slot: _slot81740_)))
    (define subclass?
      (lambda (_maybe-sub-class81729_ _maybe-super-class81730_)
        (let* ((_maybe-super-class-id81732_
                (let ()
                  (declare (not safe))
                  (##type-id _maybe-super-class81730_)))
               (_$e81734_
                (let ((__tmp86810
                       (let ()
                         (declare (not safe))
                         (##type-id _maybe-sub-class81729_))))
                  (declare (not safe))
                  (eq? _maybe-super-class-id81732_ __tmp86810))))
          (if _$e81734_
              _$e81734_
              (let ((__tmp86812
                     (lambda (_super-class81737_)
                       (let ((__tmp86813
                              (let ()
                                (declare (not safe))
                                (##type-id _super-class81737_))))
                         (declare (not safe))
                         (eq? __tmp86813 _maybe-super-class-id81732_))))
                    (__tmp86811
                     (let ()
                       (declare (not safe))
                       (type-descriptor-precedence-list
                        _maybe-sub-class81729_))))
                (declare (not safe))
                (ormap1 __tmp86812 __tmp86811))))))
    (define class-subtype?
      (lambda (_maybe-super-class81726_ _maybe-sub-class81727_)
        (let ()
          (declare (not safe))
          (subclass? _maybe-sub-class81727_ _maybe-super-class81726_))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass81723_ _obj81724_)
        (let ((__tmp86814
               (let () (declare (not safe)) (##type-id _klass81723_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj81724_ __tmp86814))))
    (define struct-instance?
      (lambda (_klass81720_ _obj81721_)
        (let ((__tmp86815
               (let () (declare (not safe)) (##type-id _klass81720_))))
          (declare (not safe))
          (##structure-instance-of? _obj81721_ __tmp86815))))
    (define class-instance?
      (lambda (_klass81715_ _obj81716_)
        (if (let () (declare (not safe)) (object? _obj81716_))
            (let ((_type81718_
                   (let () (declare (not safe)) (object-type _obj81716_))))
              (if (let () (declare (not safe)) (type-descriptor? _type81718_))
                  (let ()
                    (declare (not safe))
                    (subclass? _type81718_ _klass81715_))
                  '#f))
            '#f)))
    (define make-object
      (lambda (_klass81712_ _k81713_)
        (let ((__tmp86816 (let () (declare (not safe)) (##fx+ _k81713_ '1))))
          (declare (not safe))
          (make-object* _klass81712_ __tmp86816))))
    (define make-object*
      (lambda (_klass81707_ _k81708_)
        (let ((_obj81710_
               (let () (declare (not safe)) (##make-vector _k81708_ '#f))))
          (let ()
            (declare (not safe))
            (##vector-set! _obj81710_ '0 _klass81707_))
          (let ((__tmp86817 (macro-subtype-structure)))
            (declare (not safe))
            (##subtype-set! _obj81710_ __tmp86817))
          _obj81710_)))
    (define make-instance
      (lambda (_klass81705_)
        (let ((__tmp86818
               (let ((__tmp86819
                      (let ()
                        (declare (not safe))
                        (type-descriptor-all-slots _klass81705_))))
                 (declare (not safe))
                 (##vector-length __tmp86819))))
          (declare (not safe))
          (make-object* _klass81705_ __tmp86818))))
    (define make-struct-instance
      (lambda (_klass81692_ . _args81693_)
        (let* ((_all-slots81695_
                (let ()
                  (declare (not safe))
                  (type-descriptor-all-slots _klass81692_)))
               (_size81697_
                (let ()
                  (declare (not safe))
                  (##vector-length _all-slots81695_))))
          (let ((_$e81700_
                 (let ()
                   (declare (not safe))
                   (type-descriptor-constructor _klass81692_))))
            (if _$e81700_
                ((lambda (_kons-id81703_)
                   (let ((__tmp86822
                          (let ()
                            (declare (not safe))
                            (make-object* _klass81692_ _size81697_))))
                     (declare (not safe))
                     (__constructor-init!
                      _klass81692_
                      _kons-id81703_
                      __tmp86822
                      _args81693_)))
                 _$e81700_)
                (if (let ((__tmp86821
                           (let ()
                             (declare (not safe))
                             (##fx- _size81697_ '1)))
                          (__tmp86820 (length _args81693_)))
                      (declare (not safe))
                      (##fx= __tmp86821 __tmp86820))
                    (apply ##structure _klass81692_ _args81693_)
                    (error '"arguments don't match object size"
                           'class:
                           _klass81692_
                           'slots:
                           (let () (declare (not safe)) (##fx- _size81697_ '1))
                           'args:
                           _args81693_)))))))
    (define make-class-instance
      (lambda (_klass81682_ . _args81683_)
        (let* ((_obj81685_
                (let ((__tmp86823
                       (let ((__tmp86824
                              (let ()
                                (declare (not safe))
                                (type-descriptor-all-slots _klass81682_))))
                         (declare (not safe))
                         (##vector-length __tmp86824))))
                  (declare (not safe))
                  (make-object* _klass81682_ __tmp86823)))
               (_$e81687_
                (let ()
                  (declare (not safe))
                  (type-descriptor-constructor _klass81682_))))
          (if _$e81687_
              ((lambda (_kons-id81690_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass81682_
                    _kons-id81690_
                    _obj81685_
                    _args81683_)))
               _$e81687_)
              (let ()
                (declare (not safe))
                (__class-instance-init!
                 _klass81682_
                 _obj81685_
                 _args81683_))))))
    (define struct-instance-init!
      (lambda (_obj81679_ . _args81680_)
        (if (let ((__tmp86826 (length _args81680_))
                  (__tmp86825
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj81679_))))
              (declare (not safe))
              (##fx< __tmp86826 __tmp86825))
            (let ()
              (declare (not safe))
              (__struct-instance-init! _obj81679_ _args81680_))
            (error '"too many arguments for struct"
                   'object:
                   _obj81679_
                   'args:
                   _args81680_))))
    (define __struct-instance-init!
      (lambda (_obj81638_ _args81639_)
        (let _lp81641_ ((_k81643_ '1) (_rest81644_ _args81639_))
          (let* ((_rest8164581653_ _rest81644_)
                 (_else8164781661_ (lambda () _obj81638_))
                 (_K8164981667_
                  (lambda (_rest81664_ _hd81665_)
                    (let ()
                      (declare (not safe))
                      (unchecked-field-set! _obj81638_ _k81643_ _hd81665_))
                    (let ((__tmp86827
                           (let () (declare (not safe)) (##fx+ _k81643_ '1))))
                      (declare (not safe))
                      (_lp81641_ __tmp86827 _rest81664_)))))
            (if (let () (declare (not safe)) (##pair? _rest8164581653_))
                (let ((_hd8165081670_
                       (let () (declare (not safe)) (##car _rest8164581653_)))
                      (_tl8165181672_
                       (let () (declare (not safe)) (##cdr _rest8164581653_))))
                  (let* ((_hd81675_ _hd8165081670_)
                         (_rest81677_ _tl8165181672_))
                    (declare (not safe))
                    (_K8164981667_ _rest81677_ _hd81675_)))
                (let () (declare (not safe)) (_else8164781661_)))))))
    (define class-instance-init!
      (lambda (_obj81635_ . _args81636_)
        (let ((__tmp86828
               (let () (declare (not safe)) (object-type _obj81635_))))
          (declare (not safe))
          (__class-instance-init! __tmp86828 _obj81635_ _args81636_))))
    (define __class-instance-init!
      (lambda (_klass81579_ _obj81580_ _args81581_)
        (let _lp81583_ ((_rest81585_ _args81581_))
          (let* ((_rest8158681596_ _rest81585_)
                 (_else8158881604_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _rest81585_))
                        _obj81580_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _klass81579_
                               'rest:
                               _rest81585_))))
                 (_K8159081616_
                  (lambda (_rest81607_ _val81608_ _key81609_)
                    (let ((_$e81611_
                           (let ()
                             (declare (not safe))
                             (class-slot-offset* _klass81579_ _key81609_))))
                      (if _$e81611_
                          ((lambda (_off81614_)
                             (let ()
                               (declare (not safe))
                               (unchecked-field-set!
                                _obj81580_
                                _off81614_
                                _val81608_))
                             (let ()
                               (declare (not safe))
                               (_lp81583_ _rest81607_)))
                           _$e81611_)
                          (error '"unknown slot"
                                 'class:
                                 _klass81579_
                                 'slot:
                                 _key81609_))))))
            (if (let () (declare (not safe)) (##pair? _rest8158681596_))
                (let ((_hd8159181619_
                       (let () (declare (not safe)) (##car _rest8158681596_)))
                      (_tl8159281621_
                       (let () (declare (not safe)) (##cdr _rest8158681596_))))
                  (let ((_key81624_ _hd8159181619_))
                    (if (let () (declare (not safe)) (##pair? _tl8159281621_))
                        (let ((_hd8159381626_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl8159281621_)))
                              (_tl8159481628_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl8159281621_))))
                          (let* ((_val81631_ _hd8159381626_)
                                 (_rest81633_ _tl8159481628_))
                            (declare (not safe))
                            (_K8159081616_ _rest81633_ _val81631_ _key81624_)))
                        (let () (declare (not safe)) (_else8158881604_)))))
                (let () (declare (not safe)) (_else8158881604_)))))))
    (define constructor-init!
      (lambda (_klass81574_ _kons-id81575_ _obj81576_ . _args81577_)
        (let ()
          (declare (not safe))
          (__constructor-init!
           _klass81574_
           _kons-id81575_
           _obj81576_
           _args81577_))))
    (define __constructor-init!
      (lambda (_klass81564_ _kons-id81565_ _obj81566_ _args81567_)
        (let ((_$e81569_
               (let ()
                 (declare (not safe))
                 (__find-method _klass81564_ _kons-id81565_))))
          (if _$e81569_
              ((lambda (_kons81572_)
                 (apply _kons81572_ _obj81566_ _args81567_)
                 _obj81566_)
               _$e81569_)
              (error '"missing constructor"
                     'class:
                     _klass81564_
                     'method:
                     _kons-id81565_)))))
    (define struct-copy
      (lambda (_struct81562_)
        (if (let () (declare (not safe)) (##structure? _struct81562_))
            '#!void
            (error '"not a structure" _struct81562_))
        (let () (declare (not safe)) (##structure-copy _struct81562_))))
    (define struct->list
      (lambda (_obj81560_)
        (if (let () (declare (not safe)) (object? _obj81560_))
            (let () (declare (not safe)) (##vector->list _obj81560_))
            (error '"not an object" _obj81560_))))
    (define class->list
      (lambda (_obj81547_)
        (if (let () (declare (not safe)) (object? _obj81547_))
            (let ((_klass81549_
                   (let () (declare (not safe)) (object-type _obj81547_))))
              (if (let () (declare (not safe)) (type-descriptor? _klass81549_))
                  (let ((_all-slots81551_
                         (let ()
                           (declare (not safe))
                           (type-descriptor-all-slots _klass81549_))))
                    (let _loop81553_ ((_index81555_
                                       (let ((__tmp86834
                                              (let ()
                                                (declare (not safe))
                                                (##vector-length
                                                 _all-slots81551_))))
                                         (declare (not safe))
                                         (##fx- __tmp86834 '1)))
                                      (_plist81556_ '()))
                      (if (let () (declare (not safe)) (##fx< _index81555_ '1))
                          (let ()
                            (declare (not safe))
                            (cons _klass81549_ _plist81556_))
                          (let ((_slot81558_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _all-slots81551_
                                    _index81555_))))
                            (let ((__tmp86833
                                   (let ()
                                     (declare (not safe))
                                     (##fx- _index81555_ '1)))
                                  (__tmp86829
                                   (let ((__tmp86832
                                          (symbol->keyword _slot81558_))
                                         (__tmp86830
                                          (let ((__tmp86831
                                                 (let ()
                                                   (declare (not safe))
                                                   (unchecked-field-ref
                                                    _obj81547_
                                                    _index81555_))))
                                            (declare (not safe))
                                            (cons __tmp86831 _plist81556_))))
                                     (declare (not safe))
                                     (cons __tmp86832 __tmp86830))))
                              (declare (not safe))
                              (_loop81553_ __tmp86833 __tmp86829))))))
                  (error '"not a class type"
                         'object:
                         _obj81547_
                         'class:
                         _klass81549_)))
            (error '"not an object" _obj81547_))))
    (define call-method
      (lambda (_obj81538_ _id81539_ . _args81540_)
        (let ((_$e81542_
               (let ()
                 (declare (not safe))
                 (method-ref _obj81538_ _id81539_))))
          (if _$e81542_
              ((lambda (_method81545_)
                 (apply _method81545_ _obj81538_ _args81540_))
               _$e81542_)
              (error '"cannot find method"
                     'object:
                     _obj81538_
                     'method:
                     _id81539_)))))
    (define __builtin-type-methods (make-table 'test: eq?))
    (define method-ref
      (lambda (_obj81535_ _id81536_)
        (if (let () (declare (not safe)) (object? _obj81535_))
            (let ((__tmp86835
                   (let () (declare (not safe)) (object-type _obj81535_))))
              (declare (not safe))
              (find-method __tmp86835 _id81536_))
            '#f)))
    (define checked-method-ref
      (lambda (_obj81529_ _id81530_)
        (let ((_$e81532_
               (let ()
                 (declare (not safe))
                 (method-ref _obj81529_ _id81530_))))
          (if _$e81532_
              _$e81532_
              (error '"missing method"
                     'object:
                     _obj81529_
                     'method:
                     _id81530_)))))
    (define bound-method-ref
      (lambda (_obj81519_ _id81520_)
        (let ((_$e81522_
               (let ()
                 (declare (not safe))
                 (method-ref _obj81519_ _id81520_))))
          (if _$e81522_
              ((lambda (_method81525_)
                 (lambda _args81527_
                   (apply _method81525_ _obj81519_ _args81527_)))
               _$e81522_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_obj81512_ _id81513_)
        (let ((_method81515_
               (let ()
                 (declare (not safe))
                 (checked-method-ref _obj81512_ _id81513_))))
          (lambda _args81517_ (apply _method81515_ _obj81512_ _args81517_)))))
    (define find-method
      (lambda (_klass81509_ _id81510_)
        (if (let () (declare (not safe)) (type-descriptor? _klass81509_))
            (let ()
              (declare (not safe))
              (__find-method _klass81509_ _id81510_))
            (let ()
              (declare (not safe))
              (builtin-find-method _klass81509_ _id81510_)))))
    (define __find-method
      (lambda (_klass81503_ _id81504_)
        (let ((_$e81506_
               (let ()
                 (declare (not safe))
                 (direct-method-ref _klass81503_ _id81504_))))
          (if _$e81506_
              _$e81506_
              (if (let ()
                    (declare (not safe))
                    (type-descriptor-sealed? _klass81503_))
                  '#f
                  (let ()
                    (declare (not safe))
                    (mixin-method-ref _klass81503_ _id81504_)))))))
    (define struct-find-method find-method)
    (define class-find-method
      (lambda (_klass81500_ _id81501_)
        (if (let () (declare (not safe)) (type-descriptor? _klass81500_))
            (let ()
              (declare (not safe))
              (__find-method _klass81500_ _id81501_))
            '#f)))
    (define mixin-find-method
      (lambda (_mixins81493_ _id81494_)
        (let ((__tmp86836
               (lambda (_g8149581497_)
                 (let ()
                   (declare (not safe))
                   (direct-method-ref _g8149581497_ _id81494_)))))
          (declare (not safe))
          (ormap1 __tmp86836 _mixins81493_))))
    (define builtin-find-method
      (lambda (_klass81487_ _id81488_)
        (if (let () (declare (not safe)) (##type? _klass81487_))
            (let ((_$e81490_
                   (let ()
                     (declare (not safe))
                     (builtin-method-ref _klass81487_ _id81488_))))
              (if _$e81490_
                  _$e81490_
                  (let ((__tmp86837
                         (let ()
                           (declare (not safe))
                           (##type-super _klass81487_))))
                    (declare (not safe))
                    (builtin-find-method __tmp86837 _id81488_))))
            '#f)))
    (define direct-method-ref
      (lambda (_klass81479_ _id81480_)
        (let ((_$e81482_
               (let ()
                 (declare (not safe))
                 (type-descriptor-methods _klass81479_))))
          (if _$e81482_
              ((lambda (_ht81485_)
                 (let ()
                   (declare (not safe))
                   (table-ref _ht81485_ _id81480_ '#f)))
               _$e81482_)
              '#f))))
    (define mixin-method-ref
      (lambda (_klass81476_ _id81477_)
        (let ((__tmp86838
               (let ()
                 (declare (not safe))
                 (type-descriptor-precedence-list _klass81476_))))
          (declare (not safe))
          (mixin-find-method __tmp86838 _id81477_))))
    (define builtin-method-ref
      (lambda (_klass81468_ _id81469_)
        (let ((_$e81471_
               (let ((__tmp86839
                      (let () (declare (not safe)) (##type-id _klass81468_))))
                 (declare (not safe))
                 (table-ref __builtin-type-methods __tmp86839 '#f))))
          (if _$e81471_
              ((lambda (_mtab81474_)
                 (let ()
                   (declare (not safe))
                   (table-ref _mtab81474_ _id81469_ '#f)))
               _$e81471_)
              '#f))))
    (define bind-method!__%
      (lambda (_klass81434_ _id81435_ _proc81436_ _rebind?81437_)
        (letrec ((_bind!81439_
                  (lambda (_ht81452_)
                    (if (and (let () (declare (not safe)) (not _rebind?81437_))
                             (let ()
                               (declare (not safe))
                               (table-ref _ht81452_ _id81435_ '#f)))
                        (error '"method already bound"
                               'class:
                               _klass81434_
                               'method:
                               _id81435_)
                        (let ()
                          (declare (not safe))
                          (table-set! _ht81452_ _id81435_ _proc81436_))))))
          (if (let () (declare (not safe)) (procedure? _proc81436_))
              '#!void
              (error '"bad method; expected procedure" _proc81436_))
          (if (let () (declare (not safe)) (type-descriptor? _klass81434_))
              (let ((_ht81441_
                     (let ()
                       (declare (not safe))
                       (type-descriptor-methods _klass81434_))))
                (if _ht81441_
                    (let () (declare (not safe)) (_bind!81439_ _ht81441_))
                    (let ((_ht81443_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-methods-set! _klass81434_ _ht81443_))
                      (let () (declare (not safe)) (_bind!81439_ _ht81443_)))))
              (if (let () (declare (not safe)) (##type? _klass81434_))
                  (let ((_ht81450_
                         (let ((_$e81445_
                                (let ((__tmp86840
                                       (let ()
                                         (declare (not safe))
                                         (##type-id _klass81434_))))
                                  (declare (not safe))
                                  (table-ref
                                   __builtin-type-methods
                                   __tmp86840
                                   '#f))))
                           (if _$e81445_
                               _$e81445_
                               (let ((_ht81448_
                                      (let ()
                                        (declare (not safe))
                                        (make-table 'test: eq?))))
                                 (let ((__tmp86841
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _klass81434_))))
                                   (declare (not safe))
                                   (table-set!
                                    __builtin-type-methods
                                    __tmp86841
                                    _ht81448_))
                                 _ht81448_)))))
                    (declare (not safe))
                    (_bind!81439_ _ht81450_))
                  (error '"bad class; expected type-descriptor or builtin type"
                         _klass81434_))))))
    (define bind-method!__0
      (lambda (_klass81457_ _id81458_ _proc81459_)
        (let ((_rebind?81461_ '#t))
          (declare (not safe))
          (bind-method!__%
           _klass81457_
           _id81458_
           _proc81459_
           _rebind?81461_))))
    (define bind-method!
      (lambda _g86843_
        (let ((_g86842_ (let () (declare (not safe)) (##length _g86843_))))
          (cond ((let () (declare (not safe)) (##fx= _g86842_ 3))
                 (apply (lambda (_klass81457_ _id81458_ _proc81459_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0
                             _klass81457_
                             _id81458_
                             _proc81459_)))
                        _g86843_))
                ((let () (declare (not safe)) (##fx= _g86842_ 4))
                 (apply (lambda (_klass81463_
                                 _id81464_
                                 _proc81465_
                                 _rebind?81466_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _klass81463_
                             _id81464_
                             _proc81465_
                             _rebind?81466_)))
                        _g86843_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g86843_))))))
    (define __method-specializers (make-table 'test: eq?))
    (define bind-specializer!
      (lambda (_proc81430_ _specializer81431_)
        (let ()
          (declare (not safe))
          (table-set! __method-specializers _proc81430_ _specializer81431_))))
    (define seal-class!
      (lambda (_klass81397_)
        (letrec ((_collect-methods!81399_
                  (lambda (_mtab81415_)
                    (letrec ((_merge!81417_
                              (lambda (_tab81425_)
                                (let ((__tmp86844
                                       (lambda (_id81427_ _proc81428_)
                                         (let ()
                                           (declare (not safe))
                                           (table-set!
                                            _mtab81415_
                                            _id81427_
                                            _proc81428_)))))
                                  (declare (not safe))
                                  (table-for-each __tmp86844 _tab81425_))))
                             (_collect-direct-methods!81418_
                              (lambda (_klass81420_)
                                (let ((_$e81422_
                                       (let ()
                                         (declare (not safe))
                                         (type-descriptor-methods
                                          _klass81420_))))
                                  (if _$e81422_
                                      (let ()
                                        (declare (not safe))
                                        (_merge!81417_ _$e81422_))
                                      '#!void)))))
                      (for-each
                       _collect-direct-methods!81418_
                       (reverse (let ()
                                  (declare (not safe))
                                  (class-precedence-list _klass81397_))))))))
          (if (let () (declare (not safe)) (type-descriptor? _klass81397_))
              (if (let ()
                    (declare (not safe))
                    (type-descriptor-sealed? _klass81397_))
                  '#!void
                  (begin
                    (if (let ()
                          (declare (not safe))
                          (type-final? _klass81397_))
                        '#!void
                        (error '"cannot seal non-final class" _klass81397_))
                    (let ((_vtab81401_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?)))
                          (_mtab81402_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (_collect-methods!81399_ _mtab81402_))
                      (let ((__tmp86845
                             (lambda (_id81404_ _proc81405_)
                               (let ((_$e81407_
                                      (let ()
                                        (declare (not safe))
                                        (table-ref
                                         __method-specializers
                                         _proc81405_
                                         '#f))))
                                 (if _$e81407_
                                     ((lambda (_specializer81410_)
                                        (let ((_proc81412_
                                               (_specializer81410_
                                                _klass81397_))
                                              (_gid81413_
                                               (let ((__tmp86846
                                                      (let ()
                                                        (declare (not safe))
                                                        (##type-id
                                                         _klass81397_))))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  __tmp86846
                                                  '"::["
                                                  _id81404_
                                                  '"]"))))
                                          (eval (let ((__tmp86847
                                                       (let ((__tmp86848
                                                              (let ((__tmp86849
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp86850
                                    (let ()
                                      (declare (not safe))
                                      (cons _proc81412_ '()))))
                               (declare (not safe))
                               (cons 'quote __tmp86850))))
                        (declare (not safe))
                        (cons __tmp86849 '()))))
                 (declare (not safe))
                 (cons _gid81413_ __tmp86848))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'def __tmp86847)))
                                          (let ()
                                            (declare (not safe))
                                            (table-set!
                                             _vtab81401_
                                             _id81404_
                                             _proc81412_))))
                                      _$e81407_)
                                     (let ()
                                       (declare (not safe))
                                       (table-set!
                                        _vtab81401_
                                        _id81404_
                                        _proc81405_)))))))
                        (declare (not safe))
                        (table-for-each __tmp86845 _mtab81402_))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-methods-set!
                         _klass81397_
                         _vtab81401_))
                      (let ()
                        (declare (not safe))
                        (type-descriptor-seal! _klass81397_)))))
              '#!void))))
    (define next-method
      (lambda (_subklass81346_ _obj81347_ _id81348_)
        (let ((_klass81350_
               (let () (declare (not safe)) (object-type _obj81347_)))
              (_type-id81351_
               (let () (declare (not safe)) (##type-id _subklass81346_))))
          (if (let () (declare (not safe)) (type-descriptor? _klass81350_))
              (let _lp81353_ ((_rest81355_
                               (let ()
                                 (declare (not safe))
                                 (class-precedence-list _klass81350_))))
                (let* ((_rest8135681364_ _rest81355_)
                       (_else8135881372_ (lambda () '#f))
                       (_K8136081378_
                        (lambda (_rest81375_ _klass81376_)
                          (if (let ((__tmp86853
                                     (let ()
                                       (declare (not safe))
                                       (##type-id _klass81376_))))
                                (declare (not safe))
                                (eq? _type-id81351_ __tmp86853))
                              (let ()
                                (declare (not safe))
                                (mixin-find-method _rest81375_ _id81348_))
                              (let ()
                                (declare (not safe))
                                (_lp81353_ _rest81375_))))))
                  (if (let () (declare (not safe)) (##pair? _rest8135681364_))
                      (let ((_hd8136181381_
                             (let ()
                               (declare (not safe))
                               (##car _rest8135681364_)))
                            (_tl8136281383_
                             (let ()
                               (declare (not safe))
                               (##cdr _rest8135681364_))))
                        (let* ((_klass81386_ _hd8136181381_)
                               (_rest81388_ _tl8136281383_))
                          (declare (not safe))
                          (_K8136081378_ _rest81388_ _klass81386_)))
                      (let () (declare (not safe)) (_else8135881372_)))))
              (if (let () (declare (not safe)) (##type? _klass81350_))
                  (let _lp81390_ ((_klass81392_ _klass81350_))
                    (if (let ((__tmp86852
                               (let ()
                                 (declare (not safe))
                                 (##type-id _klass81392_))))
                          (declare (not safe))
                          (eq? _type-id81351_ __tmp86852))
                        (let ((__tmp86851
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass81392_))))
                          (declare (not safe))
                          (builtin-find-method __tmp86851 _id81348_))
                        (let ((_$e81394_
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass81392_))))
                          (if _$e81394_
                              (let ()
                                (declare (not safe))
                                (_lp81390_ _$e81394_))
                              '#f))))
                  '#f)))))
    (define call-next-method
      (lambda (_subklass81336_ _obj81337_ _id81338_ . _args81339_)
        (let ((_$e81341_
               (let ()
                 (declare (not safe))
                 (next-method _subklass81336_ _obj81337_ _id81338_))))
          (if _$e81341_
              ((lambda (_methodf81344_)
                 (apply _methodf81344_ _obj81337_ _args81339_))
               _$e81341_)
              (error '"cannot find next method"
                     'object:
                     _obj81337_
                     'method:
                     _id81338_)))))
    (define write-style (lambda (_we81334_) (macro-writeenv-style _we81334_)))
    (define write-object
      (lambda (_we81326_ _obj81327_)
        (let ((_$e81329_
               (let () (declare (not safe)) (method-ref _obj81327_ ':wr))))
          (if _$e81329_
              ((lambda (_method81332_) (_method81332_ _obj81327_ _we81326_))
               _$e81329_)
              (let ()
                (declare (not safe))
                (##default-wr _we81326_ _obj81327_))))))
    (let () (declare (not safe)) (##wr-set! write-object))))
